Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE6D15C36D
	for <lists+linux-um@lfdr.de>; Thu, 13 Feb 2020 16:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2BEK7JKyqjPo1XA3P8d2FmDv6z9TamNwyfFUOW2ov0=; b=B0FSSrO1JsKysm
	zU8hF9lGv/BJeU6IJv4DNJo/mzlMpKbolaPcDDDdUPVmE+svsAWwvZ7qyoGhHfQxToPm1+w3v3PSp
	MJL0YSoRM9gBC21GtQuJ0J/EXCXz991LauqSEF39SSoCN3avt6qxtSGdD7PTd5h99Rjg+GqDhqKo+
	vFGQUlAxHd2qpqnSYz6zcjPAodAG3Xw1IhEFNillUgCOdXHmq1Fmzw9Lm7d832gEvyFqSx3gy/qsC
	fgFZ3h8Mx3xElozXmWlmWkWK8nO7a3C3XEl1S5j/SaIxcOblfJFaIYYSSccfpgZ3YmpevbgjMSalV
	d/bLADGDuVDOnkRdzEHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Gf5-0004m0-Vc; Thu, 13 Feb 2020 15:44:19 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Gex-0004bM-VZ
 for linux-um@lists.infradead.org; Thu, 13 Feb 2020 15:44:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id z12so3312257pgl.4
 for <linux-um@lists.infradead.org>; Thu, 13 Feb 2020 07:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PtnJAjzh7uqew0zNNLE9zyJ6OhNOss0AZTQl+TfTd/Y=;
 b=BC9xuuXPOg+0HI+XQUJ1gesfGIHzwpFCiwG4bPl5frKuc9SKlWPqy+1QBSJqvuyfKo
 zAc9puAbANuhaLhdzS6DZHr7uDiMgvTtfvjJ3H/b6czwTvKdWGBRafMN+xrsaehRQw5E
 YE743nJ9vwnqOsReRGhIqJy6Vnx13SXUAyh3PmrGx+LSWhXL9qi+AVB5TqDLGQeJPZwV
 YrIbhN7abwCw9N9QatTQm3fVmFTOuC5SSo/cWdCenCI1PyMV3pBUQK24apcjU24qWm4P
 b0yKNw+ibivfcqNv6W+UvY4YDJQAohzKXdLv7jtveCIK5C9wc9s5lrKvVyoiwf7EXNkF
 dsQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PtnJAjzh7uqew0zNNLE9zyJ6OhNOss0AZTQl+TfTd/Y=;
 b=lbKKTgTTEsiH2rIa2RnaatEhDmdukwqDBIsswK6iePx56xfFgM3eElYzxYTMr1AY/E
 PnRAaXb3+JiIDSYi/3TB+yufEQAFUm7LlJezZ9qqxSjcApKKbHGKYajxJLf32H11A56z
 tl3WRyYzl9iTn8TPrLhuiToiCPvCa0v/WW/CAEfQjVTYHTGYn50tbDNKyX1OJK8nKEsO
 u9MCESBYNkd5v8/IUI8NZ9okttIBB38KztGL/KbUA3wKQ0i+k5Q+1ieloe8bi6HUypYe
 dYH+MzC/zfEc1OPe0DMyShax5+JKRfEtgxlcTRZ5DopLyPymqNJljPBezNpiI7k7lDnF
 tNWw==
X-Gm-Message-State: APjAAAWwNVmbeDz3IrD3YaP90AgIzgAWFLyYxemJ0p+CMqlypAKEAA5r
 dV5z0aYI/IXP5TYbB/9BwR+S/7D6
X-Google-Smtp-Source: APXvYqx9/s0ULmzrD5iCc+gB2s+WOp89Vh5k0Y41cUHGk5Ox3G0Q4jhV5kQoSEmErcYJ2dVuJnSXxQ==
X-Received: by 2002:a63:ca04:: with SMTP id n4mr14990408pgi.110.1581608650773; 
 Thu, 13 Feb 2020 07:44:10 -0800 (PST)
Received: from [192.168.84.170] (8.100.247.35.bc.googleusercontent.com.
 [35.247.100.8])
 by smtp.gmail.com with ESMTPSA id b25sm3552541pfo.38.2020.02.13.07.44.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2020 07:44:10 -0800 (PST)
Subject: Re: [PATCH] virtio: Work around frames incorrectly marked as gso
To: "Michael S. Tsirkin" <mst@redhat.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
References: <20191209104824.17059-1-anton.ivanov@cambridgegreys.com>
 <57230228-7030-c65f-a24f-910ca52bbe9e@cambridgegreys.com>
 <f78bfe6e-2ffc-3734-9618-470f1afea0c6@redhat.com>
 <918222d9-816a-be70-f8af-b8dfcb586240@cambridgegreys.com>
 <20200211053502-mutt-send-email-mst@kernel.org>
 <9547228b-aa93-f2b6-6fdc-8d33cde3716a@cambridgegreys.com>
 <20200213045937-mutt-send-email-mst@kernel.org>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <94fb9656-99ee-a001-e428-9d76c3620e61@gmail.com>
Date: Thu, 13 Feb 2020 07:44:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200213045937-mutt-send-email-mst@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_074412_036233_F69B67BC 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eric.dumazet[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: netdev@vger.kernel.org, Jason Wang <jasowang@redhat.com>,
 linux-um@lists.infradead.org, virtualization@lists.linux-foundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

CgpPbiAyLzEzLzIwIDI6MDAgQU0sIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPiBPbiBXZWQs
IEZlYiAxMiwgMjAyMCBhdCAwNTozODowOVBNICswMDAwLCBBbnRvbiBJdmFub3Ygd3JvdGU6Cj4+
Cj4+Cj4+IE9uIDExLzAyLzIwMjAgMTA6MzcsIE1pY2hhZWwgUy4gVHNpcmtpbiB3cm90ZToKPj4+
IE9uIFR1ZSwgRmViIDExLCAyMDIwIGF0IDA3OjQyOjM3QU0gKzAwMDAsIEFudG9uIEl2YW5vdiB3
cm90ZToKPj4+PiBPbiAxMS8wMi8yMDIwIDAyOjUxLCBKYXNvbiBXYW5nIHdyb3RlOgo+Pj4+Pgo+
Pj4+PiBPbiAyMDIwLzIvMTEg5LiK5Y2IMTI6NTUsIEFudG9uIEl2YW5vdiB3cm90ZToKPj4+Pj4+
Cj4+Pj4+Pgo+Pj4+Pj4gT24gMDkvMTIvMjAxOSAxMDo0OCwgYW50b24uaXZhbm92QGNhbWJyaWRn
ZWdyZXlzLmNvbSB3cm90ZToKPj4+Pj4+PiBGcm9tOiBBbnRvbiBJdmFub3YgPGFudG9uLml2YW5v
dkBjYW1icmlkZ2VncmV5cy5jb20+Cj4+Pj4+Pj4KPj4+Pj4+PiBTb21lIG9mIHRoZSBmcmFtZXMg
bWFya2VkIGFzIEdTTyB3aGljaCBhcnJpdmUgYXQKPj4+Pj4+PiB2aXJ0aW9fbmV0X2hkcl9mcm9t
X3NrYigpIGhhdmUgbm8gR1NPX1RZUEUsIG5vCj4+Pj4+Pj4gZnJhZ21lbnRzIChkYXRhX2xlbiA9
IDApIGFuZCBsZW5ndGggc2lnbmlmaWNhbnRseSBzaG9ydGVyCj4+Pj4+Pj4gdGhhbiB0aGUgTVRV
ICg3NTIgaW4gbXkgZXhwZXJpbWVudHMpLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBpcyBvYnNlcnZl
ZCBvbiByYXcgc29ja2V0cyByZWFkaW5nIG9mZiB2RXRoIGludGVyZmFjZXMKPj4+Pj4+PiBpbiBh
bGwgNC54IGFuZCA1Lngga2VybmVscyBJIHRlc3RlZC4KPj4+Pj4+Pgo+Pj4+Pj4+IFRoZXNlIGZy
YW1lcyBhcmUgcmVwb3J0ZWQgYXMgaW52YWxpZCB3aGlsZSB0aGV5IGFyZSBpbiBmYWN0Cj4+Pj4+
Pj4gZ3NvLWxlc3MgZnJhbWVzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBwYXRjaCBtYXJrcyB0aGUg
dm5ldCBoZWFkZXIgYXMgbm8tR1NPIGZvciB0aGVtIGluc3RlYWQKPj4+Pj4+PiBvZiByZXBvcnRp
bmcgaXQgYXMgaW52YWxpZC4KPj4+Pj4+Pgo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFudG9uIEl2
YW5vdiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4KPj4+Pj4+PiAtLS0KPj4+Pj4+
PiAgwqAgaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggfCA4ICsrKysrKy0tCj4+Pj4+Pj4gIMKg
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pj4+Pj4K
Pj4+Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmggYi9pbmNsdWRl
L2xpbnV4L3ZpcnRpb19uZXQuaAo+Pj4+Pj4+IGluZGV4IDBkMWZlOTI5N2FjNi4uZDkwZDVjZmYx
YjlhIDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2luY2x1ZGUvbGludXgvdmlydGlvX25ldC5oCj4+Pj4+
Pj4gKysrIGIvaW5jbHVkZS9saW51eC92aXJ0aW9fbmV0LmgKPj4+Pj4+PiBAQCAtMTEyLDggKzEx
MiwxMiBAQCBzdGF0aWMgaW5saW5lIGludAo+Pj4+Pj4+IHZpcnRpb19uZXRfaGRyX2Zyb21fc2ti
KGNvbnN0IHN0cnVjdCBza19idWZmICpza2IsCj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGhkci0+Z3NvX3R5cGUgPSBWSVJUSU9fTkVUX0hEUl9HU09fVENQVjQ7Cj4+Pj4+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlIGlmIChzaW5mby0+Z3NvX3R5cGUgJiBTS0JfR1NPX1RD
UFY2KQo+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZHItPmdzb190eXBlID0g
VklSVElPX05FVF9IRFJfR1NPX1RDUFY2Owo+Pj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCBlbHNlCj4+
Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIGVsc2Ugewo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChz
a2ItPmRhdGFfbGVuID09IDApCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBoZHItPmdzb190eXBlID0gVklSVElPX05FVF9IRFJfR1NPX05PTkU7Cj4+Pj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZWxzZQo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIC1FSU5WQUw7Cj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4+Pj4+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmIChzaW5mby0+Z3NvX3R5cGUgJiBTS0JfR1NPX1RDUF9FQ04p
Cj4+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkci0+Z3NvX3R5cGUgfD0gVklS
VElPX05FVF9IRFJfR1NPX0VDTjsKPj4+Pj4+PiAgwqDCoMKgwqDCoCB9IGVsc2UKPj4+Pj4+Pgo+
Pj4+Pj4KPj4+Pj4+IHBpbmcuCj4+Pj4+Pgo+Pj4+Pgo+Pj4+PiBEbyB5b3UgbWVhbiBnc29fc2l6
ZSBpcyBzZXQgYnV0IGdzb190eXBlIGlzIG5vdD8gTG9va3MgbGlrZSBhIGJ1Zwo+Pj4+PiBlbHNl
d2hlcmUuCj4+Pj4+Cj4+Pj4+IFRoYW5rcwo+Pj4+Pgo+Pj4+Pgo+Pj4+IFllcy4KPj4+Pgo+Pj4+
IEkgY291bGQgbm90IHRyYWNlIGl0IHdoZXJlIGl0IGlzIGNvbWluZyBmcm9tLgo+Pj4+Cj4+Pj4g
SSBzZWUgaXQgd2hlbiBkb2luZyByZWN2bW1zZyBvbiByYXcgc29ja2V0cyBpbiB0aGUgVU1MIHZl
Y3RvciBuZXR3b3JrCj4+Pj4gZHJpdmVycy4KPj4+Pgo+Pj4KPj4+IEkgdGhpbmsgd2UgbmVlZCB0
byBmaW5kIHRoZSBjdWxwcml0IGFuZCBmaXggaXQgdGhlcmUsIGxvdHMgb2Ygb3RoZXIgdGhpbmdz
Cj4+PiBjYW4gYnJlYWsgb3RoZXJ3aXNlLgo+Pj4gSnVzdCBwcmludGluZyBvdXQgc2tiLT5kZXYt
Pm5hbWUgc2hvdWxkIGRvIHRoZSB0cmljaywgbm8/Cj4+Cj4+IFRoZSBwcmludGsgaW4gdmlydGlv
X25ldF9oZHJfZnJvbV9za2Igc2F5cyBOVUxMLgo+Pgo+PiBUaGF0IGlzIHByb2JhYmx5IG5vcm1h
bCBmb3IgYSBsb2NhbGx5IG9yaWdpbmF0ZWQgZnJhbWUuCj4+Cj4+IEkgY2Fubm90IHJlcHJvZHVj
ZSB0aGlzIHdpdGggbmV0d29yayB0cmFmZmljIGJ5IHRoZSB3YXkgLSBpdCBoYXBwZW5zIG9ubHkg
aWYgdGhlIHRyYWZmaWMgaXMgbG9jYWxseSBvcmlnaW5hdGVkIG9uIHRoZSBob3N0Lgo+Pgo+PiBB
LAo+IAo+IE9LIHNvIGlzIGl0IGNvZGUgaW4gX190Y3BfdHJhbnNtaXRfc2tiIHRoYXQgc2V0cyBn
c29fc2l6ZSB0byBub24tbnVsbAo+IHdoZW4gZ3NvX3R5cGUgaXMgMD8KPgoKQ29ycmVjdCB3YXkg
dG8gZGV0ZXJtaW5lIGlmIGEgcGFja2V0IGlzIGEgZ3NvIG9uZSBpcyBieSBsb29raW5nIGF0IGdz
b19zaXplLgpUaGVuIG9ubHkgaXQgaXMgbGVnYWwgbG9va2luZyBhdCBnc29fdHlwZQoKCnN0YXRp
YyBpbmxpbmUgYm9vbCBza2JfaXNfZ3NvKGNvbnN0IHN0cnVjdCBza19idWZmICpza2IpCnsKICAg
IHJldHVybiBza2Jfc2hpbmZvKHNrYiktPmdzb19zaXplOwp9CgovKiBOb3RlOiBTaG91bGQgYmUg
Y2FsbGVkIG9ubHkgaWYgc2tiX2lzX2dzbyhza2IpIGlzIHRydWUgKi8Kc3RhdGljIGlubGluZSBi
b29sIHNrYl9pc19nc29fdjYoY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYikKLi4uCgoKVGhlcmUg
aXMgYWJzb2x1dGVseSBubyByZWxhdGlvbiBiZXR3ZWVuIEdTTyBhbmQgc2tiLT5kYXRhX2xlbiwg
c2tiIGNhbiBiZSBsaW5lYXJpemVkCmZvciB2YXJpb3VzIG9ydGhvZ29uYWwgcmVhc29ucy4KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtdW0g
bWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC11bQo=
