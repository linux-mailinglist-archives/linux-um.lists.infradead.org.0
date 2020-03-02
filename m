Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35EB1765C4
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 22:16:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HfPqT8oTOntIvV2Rq7HiINMWOVeq06O46gDePHrz1M0=; b=f9XCacVPcbToPw
	4WTndbE6caMqV6kubnACGjboYXLUcEmCR2CvIcSJGlouVVE/WTzKeIn1YbCmYnBcoILX/9M575x1W
	CZxuaJO5yMuHuT9ODoRlZ9vf+a/3i1AQw+EDtrKnQWJdlhV3JYqH2jnuqFZ6ylRJfA/LfC7Uyt+7u
	ivUtiC1Xe87HffhlNlo5UWFZ9OpLrGZXnS1GyQ1IEahkUjWA1aEMjkCCajxoiLGSzxTmdn798820H
	SmBuW+/tdvMV/kxANoDPWA5UJ+5qt/lFJh3jxd//+ubtTtXMhHR05Ep2Lb//GOqvnTGZpoYd84CAL
	wrKzHXbG5LQaIGTTmBwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sQg-0000g3-Si; Mon, 02 Mar 2020 21:16:46 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8sQd-0000fA-Jz
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 21:16:44 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 12so328154pjb.5
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 13:16:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=707JQcccZExSjQ1cG2+ME+5GhpTFiiOzPDZOM11Q128=;
 b=Wx9paDmHSp4xWfhx/DfIRVvf6rL3n8uUicBhfpLjw5f8G/eBmsYCqOG7N8ZuXupNmf
 rdbSrJ6qErAkMbNVgMXUUsSBYxHgiv/GlyAal69L/hnenxOTONbX4aqEEnJvd6T43Q0Z
 QRjOKpkiN8BHEWyjlNtUMfEaM8pwdjEaom99sOwwXFXqEytqTxiaEKOREenFoZszgUGi
 mCXSNHwBw6kjeHabrIttOORoS8SCOE28IO9v+aU/rKObusUUivdoWyidVU+B06g9+Oid
 gj74zbMA8eAT2fu8o+RyLNKqdW60Z2tm48WET8wore3K/9SGSY6X2xZam3H46ukFdvRl
 2pJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=707JQcccZExSjQ1cG2+ME+5GhpTFiiOzPDZOM11Q128=;
 b=Iofowf1gOh0S0q5H+discTPF7FVrYJEUtMGWexkTVifheoHoNDCIFe5pYVNsFDWImZ
 K13arqBA240zY3UEpQRECec4YRmEDlxmdufAA8hsGNNCti0yufEAJJntuFFB/VomdJ3O
 v8TMBBGwnllUVz4qINYFAuiXCYNuSysQRDG+PcFJSxRF6SUa8Uwc1FhabL0RH2QbU0rC
 YyPkYIwsjXvTrov6kt7C1gfX0INwJrHqx25LbTpXxzf7ik4rouJ38KOVBGM69QRAy4Af
 Wfs3ycNQfCas/KBO6Ty7nTUPrAaraAEotM8nfyzBJHEbCknOlaA20LwXM9pwfRZQkdgP
 r9Xg==
X-Gm-Message-State: ANhLgQ0VmmVo2hD8HkhWbOi1ImD2LIqr0Vjfgeja00MwCxrxP6CrsH6y
 BFqAj8Ef5+wzsKbmPjY8snA=
X-Google-Smtp-Source: ADFU+vv8Sd1PEqvRWJ2m63xwCVr6MxSHIdfgCkefGodJS420ZPfzwUnmsuy8u+aYp11Q6DL+cKqPKQ==
X-Received: by 2002:a17:902:8a8e:: with SMTP id
 p14mr1015904plo.28.1583183802179; 
 Mon, 02 Mar 2020 13:16:42 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id q17sm21738229pfg.123.2020.03.02.13.16.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Mar 2020 13:16:41 -0800 (PST)
Date: Mon, 2 Mar 2020 13:16:40 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v3 0/7] kunit: create a centralized executor to dispatch
 all KUnit tests
Message-ID: <20200302211640.GA8364@roeck-us.net>
References: <20200228012036.15682-1-brendanhiggins@google.com>
 <20200302200337.GH11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302200337.GH11244@42.do-not-panic.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_131643_657510_4C8EEC1B 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-doc@vger.kernel.org, Brendan Higgins <brendanhiggins@google.com>,
 linux-kselftest@vger.kernel.org, frowand.list@gmail.com,
 anton.ivanov@cambridgegreys.com, linux-arch@vger.kernel.org, richard@nod.at,
 rppt@linux.ibm.com, yzaikin@google.com, keescook@chromium.org, arnd@arndb.de,
 jdike@addtoit.com, linux-um@lists.infradead.org, davidgow@google.com,
 skhan@linuxfoundation.org, kunit-dev@googlegroups.com, alan.maguire@oracle.com,
 sboyd@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 08:03:37PM +0000, Luis Chamberlain wrote:
> Guenter,
> 
> are you still running your cross-architecture tests? If so any chance

Yes

> you can try this for your build tests?
> 

I didn't have KUNIT_TEST enabled to start with. I did that now, and
started a test run on mainline a minute ago. We'll see how that goes.

Afterwards, sure, I can run the series in a test branch. It would be great
if I can pick it up from a repository somewhere.

Guenter

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
