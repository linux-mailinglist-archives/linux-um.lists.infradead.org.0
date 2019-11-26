Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CADA10A1B5
	for <lists+linux-um@lfdr.de>; Tue, 26 Nov 2019 17:05:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=df7VTE3pySoxg5Fzw7ktgfWt+3eNMyktl4Gkc2ko5fI=; b=FJg8SltxPrmRCg
	41L3PUhAqXR1OqT540GBetfXGSdFgaFNe4aslqWf+1nMfjEA8jmBT2XedzmS1A6KpM+CX2hIIPOnY
	7prsTdWOEy/S/1y0CCiHeLGLM54Wga7P/SNFeHF5NjA2q4A2TVQry9WPxCCxMDvjVuWi+TFjGGB/V
	jgeDT4N9YFJJs7my63R6Ac5Gfg4/NkJbJU6ODuhI4tEMJDgf14bWV3wrumZ9EratLah3+FrKpc5vm
	/4haTfUTfcSaylI0sqlTfGek3JjynaoEO/ZYlIaw9ewID70bxWJ1miVcoCPMuQJVpV+YUdVarG2qw
	lBjvjw3JdgKFwXVkb2ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZdKs-0002jf-2U; Tue, 26 Nov 2019 16:05:06 +0000
Received: from lithops.sigma-star.at ([195.201.40.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZdKl-00028D-3w
 for linux-um@lists.infradead.org; Tue, 26 Nov 2019 16:05:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id D44CC60A073C;
 Tue, 26 Nov 2019 17:04:57 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id aPXrgi07fPtX; Tue, 26 Nov 2019 17:04:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by lithops.sigma-star.at (Postfix) with ESMTP id 009F862EBCAB;
 Tue, 26 Nov 2019 17:04:56 +0100 (CET)
Received: from lithops.sigma-star.at ([127.0.0.1])
 by localhost (lithops.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id p1iqjx-8fVLP; Tue, 26 Nov 2019 17:04:55 +0100 (CET)
Received: from lithops.sigma-star.at (lithops.sigma-star.at [195.201.40.130])
 by lithops.sigma-star.at (Postfix) with ESMTP id CD0A7607BD95;
 Tue, 26 Nov 2019 17:04:55 +0100 (CET)
Date: Tue, 26 Nov 2019 17:04:55 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: tavi purdila <tavi.purdila@gmail.com>
Message-ID: <293078386.98317.1574784295793.JavaMail.zimbra@nod.at>
In-Reply-To: <CAMoF9u3LRC_NaVJzmKPc0+XBxhAqdhnr4-ZzY_ypwQEzUz78yQ@mail.gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
 <CAFLxGvzCwCLbLMhcF6ZJ2afeo7PSd8xLQrU9hRH6YVaMakBSyw@mail.gmail.com>
 <de90b04151bafee083727c9769833932788cf428.camel@sipsolutions.net>
 <1662825264.98055.1574758225905.JavaMail.zimbra@nod.at>
 <4ebb14dc67ccb70543617ce1f7066f3f27cd11a8.camel@sipsolutions.net>
 <243342257.98153.1574762974057.JavaMail.zimbra@nod.at>
 <98acf77a7c6f6cba7f76c12a850ac2929b9e5a48.camel@sipsolutions.net>
 <CAMoF9u3LRC_NaVJzmKPc0+XBxhAqdhnr4-ZzY_ypwQEzUz78yQ@mail.gmail.com>
Subject: Re: [RFC v2 17/37] lkl tools: host lib: virtio devices
MIME-Version: 1.0
X-Originating-IP: [195.201.40.130]
X-Mailer: Zimbra 8.8.12_GA_3807 (ZimbraWebClient - FF68 (Linux)/8.8.12_GA_3809)
Thread-Topic: lkl tools: host lib: virtio devices
Thread-Index: 2KnPvE0uN6YbhCCXecDemzTGhDLtJQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_080459_455539_2CFBF1BD 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch <linux-arch@vger.kernel.org>, cem <cem@freebsd.org>,
 linux-um <linux-um@lists.infradead.org>, retrage01 <retrage01@gmail.com>,
 liuyuan <liuyuan@google.com>, pscollins <pscollins@google.com>,
 linux-kernel-library <linux-kernel-library@freelists.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 sigmaepsilon92 <sigmaepsilon92@gmail.com>, Hajime Tazaki <thehajime@gmail.com>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

LS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+IFZvbjogInRhdmkgcHVyZGlsYSIgPHRh
dmkucHVyZGlsYUBnbWFpbC5jb20+Cj4gQW46ICJKb2hhbm5lcyBCZXJnIiA8am9oYW5uZXNAc2lw
c29sdXRpb25zLm5ldD4KPiBDQzogInJpY2hhcmQiIDxyaWNoYXJkQG5vZC5hdD4sICJIYWppbWUg
VGF6YWtpIiA8dGhlaGFqaW1lQGdtYWlsLmNvbT4sICJsaW51eC1hcmNoIiA8bGludXgtYXJjaEB2
Z2VyLmtlcm5lbC5vcmc+LCAiY2VtIgo+IDxjZW1AZnJlZWJzZC5vcmc+LCAibGludXgtdW0iIDxs
aW51eC11bUBsaXN0cy5pbmZyYWRlYWQub3JnPiwgInJldHJhZ2UwMSIgPHJldHJhZ2UwMUBnbWFp
bC5jb20+LCAibGludXgta2VybmVsLWxpYnJhcnkiCj4gPGxpbnV4LWtlcm5lbC1saWJyYXJ5QGZy
ZWVsaXN0cy5vcmc+LCAicHNjb2xsaW5zIiA8cHNjb2xsaW5zQGdvb2dsZS5jb20+LCAic2lnbWFl
cHNpbG9uOTIiIDxzaWdtYWVwc2lsb245MkBnbWFpbC5jb20+LAo+ICJsaXV5dWFuIiA8bGl1eXVh
bkBnb29nbGUuY29tPgo+IEdlc2VuZGV0OiBEaWVuc3RhZywgMjYuIE5vdmVtYmVyIDIwMTkgMTE6
NDI6MDEKPiBCZXRyZWZmOiBSZTogW1JGQyB2MiAxNy8zN10gbGtsIHRvb2xzOiBob3N0IGxpYjog
dmlydGlvIGRldmljZXMKCj4gT24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMTI6MTYgUE0gSm9oYW5u
ZXMgQmVyZwo+IDxqb2hhbm5lc0BzaXBzb2x1dGlvbnMubmV0PiB3cm90ZToKPj4KPj4gT24gVHVl
LCAyMDE5LTExLTI2IGF0IDExOjA5ICswMTAwLCBSaWNoYXJkIFdlaW5iZXJnZXIgd3JvdGU6Cj4+
ID4gLS0tLS0gVXJzcHLDvG5nbGljaGUgTWFpbCAtLS0tLQo+PiA+ID4gPiBNeSBwb2ludCBpcyB0
aGF0IFVNTCBhbmQgTEtMIHNob3VsZCB0cnkgdG8gZG8gdXNlIHRoZSBzYW1lIGNvbmNlcHQvY29k
ZQo+PiA+ID4gPiByZWdhcmRpbmcgdmlydGlvLiBBdCB0aGUgZW5kIG9mIGRheSBib3RoIHVzZSB2
aXJ0dWFsIGRldmljZXMgd2hpY2ggdXNlCj4+ID4gPiA+IGZhY2lsaXRpZXMgZnJvbSB0aGUgaG9z
dC4KPj4gPiA+ID4gSWYgdGhpcyBpcyByZWFsbHkgbm90IHBvc3NpYmxlIGl0IG5lZWRzIGEgZ29v
ZCBleHBsYW5hdGlvbi4KPj4gPiA+Cj4+ID4gPiBJIHRoaW5rIGl0IGlzbid0IHBvc3NpYmxlLCB1
bmxlc3MgeW91IHVzZSB2aG9zdC11c2VyIG92ZXIgYSB1bml4IGRvbWFpbgo+PiA+ID4gc29ja2V0
IGludGVybmFsbHkgdG8gdGFsayBiZXR3ZWVuIHRoZSBrZXJuZWwgKHZpcnRpb191bWwpIGFuZCBo
eXBlcnZpc29yCj4+ID4gPiAoZGV2aWNlKSBjb21wb25lbnRzLgo+PiA+ID4KPj4gPiA+IEluIHZp
cnRpb191bWwsIHRoZSBkZXZpY2UgaW1wbGVtZW50YXRpb24gaXMgYXNzdW1lZCB0byBiZSBhIHNl
cGFyYXRlCj4+ID4gPiBwcm9jZXNzIHdpdGggYSB2aG9zdC11c2VyIGNvbm5lY3Rpb24uIEhlcmUg
aW4gTEtMLCB0aGUgdmlydGlvIGRldmljZSBpcwo+PiA+ID4gcGFydCBvZiB0aGUgImh5cGVydmlz
b3IiLCBpLmUuIGluIHRoZSBzYW1lIHByb2Nlc3MuCj4+ID4KPj4gPiBFeGFjdGx5LCBjdXJyZW50
bHkgVU1MIGFuZCBMS0wgc29sdmUgc2FtZSB0aGluZ3MgZGlmZmVyZW50bHksIGJ1dCBkbyB3ZSBu
ZWVkIHRvPwo+Pgo+PiBJdCdzIG5vdCB0aGUgc2FtZSB0aGluZyB0aG91Z2ggOi0pCj4+Cj4+IFVN
TCByaWdodCBub3cgZG9lc24ndCBoYXZlIG9yIHN1cHBvcnQgdmlydGlvIGRldmljZXMgaW4gdGhl
IGJ1aWx0LWluCj4+IGh5cGVydmlzb3IsIHdoYXQgd2Ugd2FudGVkIHRvIHVzZSB2aXJ0aW8gZm9y
IHdhcyBleHBsaWNpdGx5IGZvciB0aGUKPj4gdmhvc3QtdXNlciBkZXZpY2VzLgo+Pgo+PiBMS0wg
Y2xlYXJseSB3YW50cyB0byBoYXZlIGRldmljZSBpbXBsZW1lbnRhdGlvbnMgaW4gdGhlIGh5cGVy
dmlzb3IsCj4+IHBlcmhhcHMgZm9yIG5ldHdvcmtpbmcgb3IgY29uc29sZSBldGMuPyBUaGF0IF9t
aWdodF8gYmUgdXNlZnVsIHNpbmNlIGl0Cj4+IG1ha2VzIHRoZSBkZXZpY2UgaW1wbGVtZW50YXRp
b24gbW9yZSBnZW5lcmFsLCB1bmxpa2UgdGhlIFVNTCBhcHByb2FjaAo+PiB3aGVyZSBhbGwgZGV2
aWNlcyBjb21lIHdpdGggYSBrZXJuZWwtIGFuZCB1c2VyLXNpZGUgYW5kIGFyZSBzcGVjaWFsCj4+
IGRyaXZlcnMgaW4gdGhlIGtlcm5lbCwgdnMuIGdlbmVyYWwgdmlydGlvIGRyaXZlcnMuCj4+Cj4g
Cj4gVGhhdCBpcyBjb3JyZWN0LiBJbml0aWFsbHkgd2UgdXNlZCB0aGUgc2FtZSBVTUwgbW9kZWws
IHdpdGggZGVkaWNhdGVkCj4gZHJpdmVycyBmb3IgTEtMLCBhbmQgbGF0ZXIgc3dpdGNoZWQgdG8g
dXNpbmcgdGhlIGJ1aWx0LWluIHZpcnRpbwo+IGRyaXZlcnMgKHNvIGZhciBmb3IgbmV0d29yayBh
bmQgYmxvY2sgZGV2aWNlcykuCgpDYW4geW91IHBsZWFzZSBwb2ludCBvdXQgYSBsaXR0bGUgZnVy
dGhlciB3aHkgVU1MJ3MgbmV0IG9yIGJsb2NrIGRyaXZlcnMKYXJlIG5vdCB1c2FibGUgZm9yIExL
TD8KV2hhdCBpcyBtaXNzaW5nPwoKUGVyZm9ybWFuY2UgbnVtYmVycyB3b3VsZCBiZSBhbHNvIG5p
Y2UgdG8gaGF2ZS4KQW50b24gZGlkIGdyZWF0IHdvcmsgb24gaW1wcm92aW5nIFVNTCdzIGRyaXZl
cnMuCgpUaGFua3MsCi8vcmljaGFyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtdW0gbWFpbGluZyBsaXN0CmxpbnV4LXVtQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC11bQo=
